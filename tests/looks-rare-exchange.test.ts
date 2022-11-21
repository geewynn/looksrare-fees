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
import { Address, BigInt } from "@graphprotocol/graph-ts"
import { handleRoyaltyPayment, handleTakerAsk, handleTakerBid } from "../src/looks-rare-exchange"
import { amount, collectionAddress, createRoyaltyPaymentEvent, createTakerAskEvent, createTakerBidEvent, currencyAddress, maker, orderHash, orderNonce, price, receipientAddress, strat, taker, takerAmount, tokenIds } from "./looks-rare-exchange-utils"

describe("Describe entity assertions", () => {
  beforeAll(() => {
  })

  afterAll(() => {
    clearStore()
  })

  test("User is created", () => {
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
    let mockEvent = newMockEvent();

    let id = mockEvent.transaction.hash.toHex();

    let takerAsk = createTakerAskEvent(orderHash, orderNonce, taker, maker, strat, currencyAddress, collectionAddress, tokenIds, takerAmount, price)

    handleTakerAsk(takerAsk)

    assert.fieldEquals("Transaction", id, "tokenId", "73467")
    assert.fieldEquals("Transaction", id, "taker", "0x13928eb9a86c8278a45b6ff2935c7730b58ac675")
    assert.fieldEquals("Transaction", id, "maker", "0x20d51d9b528c9febb0424337a76e1e8299ae9aaa")
    assert.fieldEquals("Transaction", id, "amount", "1")
    assert.fieldEquals("Transaction", id, "item", "0x34d85c9cdeb23fa97cb08333b511ac86e1c4e258-0x11efb")
    assert.fieldEquals("Transaction", id, "isTakerAsk", "true")
  })

  test("Test takerBid", () => {
  
    let mockEvent = newMockEvent();

    let id = mockEvent.transaction.hash.toHex();

    let takerBid = createTakerBidEvent(orderHash, orderNonce, taker, maker, strat, currencyAddress, collectionAddress, tokenIds, takerAmount, price)


    handleTakerBid(takerBid)

    assert.fieldEquals("Transaction", id, "tokenId", "73467") 
    assert.fieldEquals("Transaction", id, "taker", "0x13928eb9a86c8278a45b6ff2935c7730b58ac675")
    assert.fieldEquals("Transaction", id, "maker", "0x20d51d9b528c9febb0424337a76e1e8299ae9aaa")
    assert.fieldEquals("Transaction", id, "amount", "1")
    assert.fieldEquals("Transaction", id, "item", "0x34d85c9cdeb23fa97cb08333b511ac86e1c4e258-0x11efb")
    assert.fieldEquals("Transaction", id, "isTakerAsk", "false")

  })

})
