module primitive::primitive {


    fun init(ctx: &mut TxContext) {

        let int_8 =  8u8;
        let int_16 = 16u16;
        let int_32 = 32u32;
        let int_32_1 = 320;
        let int_64= 32u64;
        let int_128= 32u128;
        let int_256= 32u256;
        let int_spit : u64 = 111_111_222;
        let int_spit : u128 = 111_111_222;
        let int_spit : u64 = 0x000;
        let bool_false = false;
        let bool_true = true;

        let address_1 = @0x1;
        let address_2 = @primitive;
    }


}
