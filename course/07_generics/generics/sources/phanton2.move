module generics::phanton2 {

    use sui::object::UID;

    public  struct Coin<phantom T: drop> has key , store{
        id:UID,
    }

    fun init(ctx: &mut TxContext) {


    }



}
