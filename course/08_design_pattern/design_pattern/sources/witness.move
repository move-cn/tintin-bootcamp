/// Module that defines a generic type `Guardian<T>` which can only be
/// instantiated with a witness.
module design_pattern::witness {
    use sui::object::{Self, UID};
    use sui::tx_context::TxContext;

    /// Phantom parameter T can only be initialized in the `create_guardian`
    /// function. But the types passed here must have `drop`.
    public  struct Guardian<phantom T: drop> has key, store {
        id: UID
    }

    /// The first argument of this function is an actual instance of the
    /// type T with `drop` ability. It is dropped as soon as received.
    public fun create_guardian<T: drop>(
        _witness: T, ctx: &mut TxContext
    ): Guardian<T> {
        Guardian { id: object::new(ctx) }
    }
}

/// Custom module that makes use of the `guardian`.
module design_pattern::peace_guardian {
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    // Use the `guardian` as a dependency.
    use design_pattern::witness;

    /// This type is intended to be used only once.
   public  struct PEACE has drop {}

    /// Module initializer is the best way to ensure that the
    /// code is called only once. With `Witness` pattern it is
    /// often the best practice.
    fun init(ctx: &mut TxContext) {
        transfer::public_transfer(
            witness::create_guardian(PEACE {}, ctx),
            tx_context::sender(ctx)
        )
    }
}
