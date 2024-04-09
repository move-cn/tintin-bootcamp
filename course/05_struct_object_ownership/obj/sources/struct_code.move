module obj::struct_code {

    use sui::tx_context::TxContext;

    public struct Person{
        age:u8,
        gender:u8,
        height:u16
    }

   public struct Color{
        red:u8,
        green:u8,
        blue:u8
    }


    fun init(_ctx: &mut TxContext) {
    }

}
