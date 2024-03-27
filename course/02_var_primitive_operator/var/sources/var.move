module var::var {

    use sui::tx_context::{TxContext};

    fun init(ctx: &mut TxContext) {

        let s = b"hello";

        let s2 = s; // copy
        let foo2 = foo; // move
        let coin2 = coin; // copy

        let x = 0;
        let b = false;
        let addr = @0x42;
        let x_ref = &x;
        let coin_ref = &mut coin2;

        let x2 = x; // copy
        let b2 = b; // copy
        let addr2 = @0x42; // copy
        let x_ref2 = x_ref; // copy
        let coin_ref2 = coin_ref; // copy
    }

}
