module design_pattern::mycoin {
    use std::option;
    use sui::coin;
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    /// The type identifier of coin. The coin will have a type
    /// tag of kind: `Coin<package_object::mycoin::MYCOIN>`
    /// Make sure that the name of the type matches the module's name.
   public  struct MYCOIN has drop {}

    /// Module initializer is called once on module publish. A treasury
    /// cap is sent to the publisher, who then controls minting and burning
    fun init(witness: MYCOIN, ctx: &mut TxContext) {
        let (treasury, metadata) = coin::create_currency(
            witness,
            6,                // decimals
            b"MYC",           // symbol
            b"My Coin",       // name
            b"Don't ask why", // description
            option::none(),   // icon url
            ctx
        );

        // transfer the `TreasuryCap` to the sender, so they can mint and burn
        transfer::public_transfer(treasury, tx_context::sender(ctx));

        // metadata is typically frozen after creation
        transfer::public_freeze_object(metadata);
    }
}