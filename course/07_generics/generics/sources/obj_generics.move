module generics::obj_generics {
    use sui::object::UID;

    public struct Box32 {
        value: u32
    }

    public struct Box16 {
        value: u16
    }

    public struct Box64 {
        value: u64
     }
    public struct Box128 {
        value: u128
    }


    public struct Box <T> {
        value: T
    }


    public struct Box2 <T,Y> {
        value: T,
        value2: Y,
    }

    public struct Box22 <T> {
        value: T,
        value2: T,
    }



    public struct Box3 <T,Y,Z> {
        value: T,
        value2: Y,
        value3: Z,
    }


    public struct Box4<T: store + drop> has key, store {
        id:UID,
        value: T
    }

    public struct Box5<T: store + drop, Y: store>   has key, store {
        id:UID,
        value: T,
        value2: Y,
    }



    fun init(ctx: &mut TxContext) {

        // let box1 = Box32{
        //     value:10,
        // };
        //
        //
        // let box2 = Box<u32>{
        //     value:23,
        // };
        //
        // let box3 = Box<u16>{
        //     value:23,
        // };
        //
        // let box4 = Box<u128>{
        //     value:23,
        // };
        //
        //
        // let box22 =   Box22<u16>{
        //     value:1,
        //     value2:2,
        // };
        //
        // let box22 =   Box2<u16,u16>{
        //     value:1,
        //     value2:2,
        // };
        //
        // let box22 =   Box2<u16,u32>{
        //     value:1,
        //     value2:2,
        // };

    }


}

