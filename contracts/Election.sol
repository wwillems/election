pragma solidity ^0.4.2;

contract Election {

	struct Candidate {
		uint256 id;
		string name;
		uint256 voteCount;
	}

	mapping(uint => Candidate) public candidates;

	uint public candidatesCount;

	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

}