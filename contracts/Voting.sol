// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string name;
        uint256 voteCount;
    }

    Proposal[] public proposals;
    mapping(address => bool) public hasVoted;

    event ProposalCreated(uint256 proposalId, string name);
    event Voted(address voter, uint256 proposalId);

    function createProposal(string memory _name) public {
        proposals.push(Proposal(_name, 0));
        emit ProposalCreated(proposals.length - 1, _name);
    }

    function vote(uint256 _proposalId) public {
        require(_proposalId < proposals.length, "Invalid proposal ID");
        require(!hasVoted[msg.sender], "Already voted");
        proposals[_proposalId].voteCount += 1;
        hasVoted[msg.sender] = true;
        emit Voted(msg.sender, _proposalId);
    }

    function getProposal(uint256 _proposalId) public view returns (string memory name, uint256 voteCount) {
        require(_proposalId < proposals.length, "Invalid proposal ID");
        Proposal memory proposal = proposals[_proposalId];
        return (proposal.name, proposal.voteCount);
    }

    function getProposalCount() public view returns (uint256) {
        return proposals.length;
    }

}
