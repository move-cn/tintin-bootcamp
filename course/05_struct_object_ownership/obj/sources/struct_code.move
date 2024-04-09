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

    public fun delete_color(color:Color){
        let Color{ red,green,blue} = Color;

    }

    fun init(_ctx: &mut TxContext) {
        let color = Color{
            red:1,
            green:2,
            blue:3
        };

        delete_color(color);
    }

}
