module design_pattern::transferable_witness {
    use sui::transfer;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};

    /// Witness now has a `store` that allows us to store it inside a wrapper.
    public struct WITNESS has store, drop {}

    /// Carries the witness type. Can be used only once to get a Witness.
   public struct WitnessCarrier has key { id: UID, witness: WITNESS }

    /// Send a `WitnessCarrier` to the module publisher.
    fun init(ctx: &mut TxContext) {
        transfer::transfer(
            WitnessCarrier { id: object::new(ctx), witness: WITNESS {} },
            tx_context::sender(ctx)
        )
    }

    /// Unwrap a carrier and get the inner WITNESS type.
    public fun get_witness(carrier: WitnessCarrier): WITNESS {
        let WitnessCarrier { id, witness } = carrier;
        object::delete(id);
        witness
    }
}