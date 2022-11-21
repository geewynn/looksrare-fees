import {
  assert,
  describe,
  test,
  clearStore,
  beforeAll,
  afterAll,
  newMockEvent
} from "matchstick-as/assembly/index"
import { getOrCreateUser, getOrCreateCollection, getOrCreateItem } from "../src/helpers"
import { Address, BigInt, Bytes } from "@graphprotocol/graph-ts"
import { handleRoyaltyPayment, handleTakerAsk, handleTakerBid } from "../src/looks-rare-exchange"
import { createRoyaltyPaymentEvent, createTakerAskEvent, createTakerBidEvent } from "./looks-rare-exchange-utils"

describe("Describe entity assertions", () => {
  beforeAll(() => {
    getOrCreateUser(Address.fromString("0x37ceB4bA093D40234c6fB312d9791B67c04eF49A"));
    getOrCreateCollection(Address.fromString("0x34d85c9CDeB23FA97cb08333b511ac86E1C4E258"));
    getOrCreateItem(Address.fromString("0x34d85c9CDeB23FA97cb08333b511ac86E1C4E258"),BigInt.fromString("73467"));
  })

  afterAll(() => {
    clearStore()
  })

  test("User is created", () => {
    let collectionAddress = Address.fromString("0x34d85c9CDeB23FA97cb08333b511ac86E1C4E258");
    let tokenIds = BigInt.fromString("73467")
    let receipientAddress = Address.fromString("0x37ceB4bA093D40234c6fB312d9791B67c04eF49A")
    let currencyAddress = Address.fromString("0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2")
    let amount =  BigInt.fromString("6027499999500000")

    let mockEvent = newMockEvent();

    let id = mockEvent.transaction.hash.toHex() + "-" + mockEvent.logIndex.toString();


    let royaltyPayment = createRoyaltyPaymentEvent(
      collectionAddress,
      tokenIds,
      receipientAddress,
      currencyAddress,
      amount
    )
    handleRoyaltyPayment(royaltyPayment)
    assert.fieldEquals("RoyaltyPayment", id, "tokenId", "73467")
    assert.fieldEquals("RoyaltyPayment", id, "royaltyRecipient", "0x37ceb4ba093d40234c6fb312d9791b67c04ef49a")
    assert.fieldEquals("RoyaltyPayment", id, "currency", "0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2")
    assert.fieldEquals("RoyaltyPayment", id, "amount", "6027499999500000")
    assert.fieldEquals("RoyaltyPayment", id, "item", "0x34d85c9cdeb23fa97cb08333b511ac86e1c4e258")
    
  })

  test("Test takerAsk", () => {
    let taker = Address.fromString("0x13928eB9A86c8278a45B6fF2935c7730b58AC675")
    let maker = Address.fromString("0x20D51d9B528c9feBB0424337A76e1E8299Ae9aaa")
    let orderHash = Bytes.fromHexString("5C511DC30E475A22FEFA3E1FF3E85872559487D736AA85BE85A2EBC1DFCFDC0D")
    let orderNonce = BigInt.fromString("154")
    let currencyAddress = Address.fromString("0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2")
    let collectionAddress = Address.fromString("0x34d85c9CDeB23FA97cb08333b511ac86E1C4E258");
    let strat = Address.fromString("0x579af6FD30BF83a5Ac0D636bc619f98DBdeb930c")
    let tokenIds = BigInt.fromString("73467")
    let amount =  BigInt.fromString("1")
    let price =  BigInt.fromString("1205499999900000000")

    


    let mockEvent = newMockEvent();

    let id = mockEvent.transaction.hash.toHex();

    let takerAsk = createTakerAskEvent(orderHash, orderNonce, taker, maker, strat, currencyAddress, collectionAddress, tokenIds, amount, price)

    handleTakerAsk(takerAsk)

    assert.fieldEquals("Transaction", id, "tokenId", "73467")
    assert.fieldEquals("Transaction", id, "taker", "0x13928eb9a86c8278a45b6ff2935c7730b58ac675")
    assert.fieldEquals("Transaction", id, "maker", "0x20d51d9b528c9febb0424337a76e1e8299ae9aaa")
    assert.fieldEquals("Transaction", id, "amount", "1")
    assert.fieldEquals("Transaction", id, "item", "0x34d85c9cdeb23fa97cb08333b511ac86e1c4e258-0x11efb")
    assert.fieldEquals("Transaction", id, "isTakerAsk", "true")
  })

  test("Test takerBid", () => {
    let taker = Address.fromString("0x13928eB9A86c8278a45B6fF2935c7730b58AC675")
    let maker = Address.fromString("0x20D51d9B528c9feBB0424337A76e1E8299Ae9aaa")
    let orderHash = Bytes.fromHexString("5C511DC30E475A22FEFA3E1FF3E85872559487D736AA85BE85A2EBC1DFCFDC0D")
    let orderNonce = BigInt.fromString("154")
    let currencyAddress = Address.fromString("0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2")
    let collectionAddress = Address.fromString("0x34d85c9CDeB23FA97cb08333b511ac86E1C4E258");
    let strat = Address.fromString("0x579af6FD30BF83a5Ac0D636bc619f98DBdeb930c")
    let tokenIds = BigInt.fromString("73467")
    let amount =  BigInt.fromString("1")
    let price =  BigInt.fromString("1205499999900000000")

  
    let mockEvent = newMockEvent();

    let id = mockEvent.transaction.hash.toHex();

    let takerBid = createTakerBidEvent(orderHash, orderNonce, taker, maker, strat, currencyAddress, collectionAddress, tokenIds, amount, price)


    handleTakerBid(takerBid)

    assert.fieldEquals("Transaction", id, "tokenId", "73467")
    assert.fieldEquals("Transaction", id, "taker", "0x13928eb9a86c8278a45b6ff2935c7730b58ac675")
    assert.fieldEquals("Transaction", id, "maker", "0x20d51d9b528c9febb0424337a76e1e8299ae9aaa")
    assert.fieldEquals("Transaction", id, "amount", "1")
    assert.fieldEquals("Transaction", id, "item", "0x34d85c9cdeb23fa97cb08333b511ac86e1c4e258-0x11efb")
    assert.fieldEquals("Transaction", id, "isTakerAsk", "false")

  })

})
