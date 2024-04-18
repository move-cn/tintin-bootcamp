module generics::generics {

    use sui::tx_context::TxContext;

    public struct Box<T> {
        value: T
    }

    public fun create_box <T> (value: T): Box<T> {
        Box<T> { value }
    }


    fun init(ctx: &mut TxContext) {

        // let  box = create_box <u32> (1u32);
        //
        // let  box1 = create_box(1u32);
    }

}

