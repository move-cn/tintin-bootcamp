module obj::obj {
    use sui::object::UID;

    public struct People has key {
        id: UID,
        gender: u8,
    }

    fun init(ctx: &mut TxContext) {}
}

