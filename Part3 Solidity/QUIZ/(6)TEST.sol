// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/*
안건을 올리고 이에 대한 찬성과 반대를 할 수 있는 기능을 구현하세요. 
안건은 번호, 제목, 내용, 제안자(address) 그리고 찬성자 수와 반대자 수로 이루어져 있습니다.(구조체)
안건들을 모아놓은 자료구조도 구현하세요. (map 이나 array)

사용자는 자신의 이름과 주소, 자신이 만든 안건 그리고 자신이 투표한 안건과 어떻게 투표했는지(찬/반)에 대한 정보로 이루어져 있습니다.(구조체)

* 사용자 등록 기능 - 사용자를 등록하는 기능
* 투표하는 기능 - 특정 안건에 대하여 투표하는 기능, 안건은 제목으로 검색, 이미 투표한 건에 대해서는 재투표 불가능
* 안건 제안 기능 - 자신이 원하는 안건을 제안하는 기능
* 제안한 안건 확인 기능 - 자신이 제안한 안건에 대한 현재 진행 상황 확인기능
* 전체 안건 확인 기능 - 제목으로 안건을 검색하면 번호, 제목, 내용, 제안자, 찬반 수 모두를 반환하는 기능
-------------------------------------------------------------------------------------------------
* 안건 진행 과정 - 투표 진행중, 통과, 기각 상태를 구별하여 알려주고 전체의 70% 그리고 투표자의 66% 이상이 찬성해야 통과로 변경, 둘 중 하나라도 만족못하면 기각
*/

contract QUIZ6 {
    struct agenda { // 안건
        uint number; 
        string title; 
        address proponent; 
        uint agree; 
        uint opposition; 
    }

    agenda[] data; 

    struct user { // 사용자
        string name;
        address addr;
        string myagenda;
        string vagenda;
        bool vote;
    }

    address payable polls;

    constructor() {
        polls = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    modifier onlyOwner {
        require(msg.sender == polls);
        _;
    }

    mapping(address => user) userList; //사용자
    mapping(address => bool) hasVoted; // 투표

    //* 사용자 등록 기능 - 사용자를 등록하는 기능
    function register(string memory _name, string memory _myagenda, string memory _vagenda, bool _vote) public {
        userList[msg.sender] = user(_name, msg.sender, _myagenda, _vagenda, _vote);
    }

    //* 투표하는 기능 - 특정 안건에 대하여 투표하는 기능, 안건은 제목으로 검색, 이미 투표한 건에 대해서는 재투표 불가능
    function vote(uint agendaIndex, bool isAgree) public {
        // 음.. 투표를 한번만 하도록 해야하는데.. 투표권을 어떻게 한명당 하나만 줄까..
        require(agendaIndex < data.length, "no re-vote");
        //투표를 해야하니까 카운트가 되야겠지? agree면 if 아니면 else.
        if (isAgree) {
            selectedAgenda.agree++; // 찬성 투표
        } else {
            selectedAgenda.opposition++; // 반대 투표
        }
        //투표 결과를 어떻게 해야할까..
        
    }

    //* 안건 제안 기능 - 자신이 원하는 안건을 제안하는 기능
    function proposeAgenda(string memory _title) public {
        //음.. 원하는 안건을 제안...
    }
}
