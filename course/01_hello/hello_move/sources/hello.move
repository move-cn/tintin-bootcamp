module hello_move::hello {
    use std::ascii::{String, string};
    use sui::transfer::transfer;
    use sui::tx_context::{TxContext, sender};

    struct Hello {
        say: String
    }

    fun init(ctx: &mut TxContext) {
        let hello_move = Hello {
            say: string(b"move"),
        };
        transfer(hello_move, sender(ctx))
    }
}
