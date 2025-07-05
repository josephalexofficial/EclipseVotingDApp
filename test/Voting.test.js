const { expect } = require("chai");

describe("Voting", function () {
  let Voting, voting, owner;

  beforeEach(async function () {
    Voting = await ethers.getContractFactory("Voting");
    voting = await Voting.deploy();
    await voting.deployed();
    [owner] = await ethers.getSigners();
  });

  it("should create and vote on a proposal", async function () {
    await voting.createProposal("Test Proposal");
    await voting.vote(0);
    const proposal = await voting.getProposal(0);
    expect(proposal.name).to.equal("Test Proposal");
    expect(proposal.voteCount).to.equal(1);
  });
});