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
        uint order;
    }

    function menuItem(TezosLibrary.Account request) external responsible returns(MenuItem);
}

interface ITezosAccountServiceCall {
    function call(TezosLibrary.Account request) external responsible returns(TezosLibrary.Account);
}

interface ITezosAccountServiceRun {
    function run(TezosLibrary.Account request) external;
}

interface ITezosAccountServiceUpdate {
    function update(TezosLibrary.Account account) external;
}
