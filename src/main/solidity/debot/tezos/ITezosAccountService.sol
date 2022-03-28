pragma ton-solidity >= 0.53.0;


library TezosLibrary {
    struct Account {
        optional(string) addr;
        optional(uint32) signBoxHandle;
    }
}

interface ITezosAccountServiceMenuItem {
    struct MenuItem {
        string title;
        string description;
    }

    function menuItem(TezosLibrary.Account request) external responsible returns(MenuItem);
}

interface ITezosAccountServiceCall {
    function call(TezosLibrary.Account request) external responsible returns(TezosLibrary.Account);
}

interface ITezosAccountServiceRun {
    function run(TezosLibrary.Account request) external;
}

interface ITezosAccountServiceCallback {
    function update(TezosLibrary.Account account) external;
    function finish() external;
}
