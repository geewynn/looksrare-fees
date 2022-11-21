import { newMockEvent } from "matchstick-as"
import { ethereum, Address, BigInt, Bytes } from "@graphprotocol/graph-ts"
import {
  RoyaltyPayment,
  TakerAsk,
  TakerBid
} from "../generated/LooksRareExchange/LooksRareExchange"



export function createRoyaltyPaymentEvent(
  collection: Address,
  tokenId: BigInt,
  royaltyRecipient: Address,
  currency: Address,
  amount: BigInt
): RoyaltyPayment {
  let mockEvent = newMockEvent();
  let collectionParam = new ethereum.EventParam("collection", ethereum.Value.fromAddress(collection))
  let tokenIdParam = new ethereum.EventParam("tokenId", ethereum.Value.fromSignedBigInt(tokenId))
  let royaltyRecipientParam = new ethereum.EventParam("royaltyRecipient", ethereum.Value.fromAddress(royaltyRecipient))
  let currencyParam = new ethereum.EventParam("currency", ethereum.Value.fromAddress(currency))
  let amountParam = new ethereum.EventParam("amount", ethereum.Value.fromSignedBigInt(amount))

  let paymentEvent = new RoyaltyPayment(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    [collectionParam, tokenIdParam, royaltyRecipientParam,currencyParam, amountParam ],
    mockEvent.receipt
  );

  return paymentEvent;

}

export function createTakerAskEvent(
  orderHash: Bytes,
  orderNonce: BigInt,
  taker: Address,
  maker: Address,
  strategy: Address,          
  currency: Address,
  collection: Address,
  tokenId: BigInt,
  amount: BigInt,
  price: BigInt
): TakerAsk {
  let mockEvent = newMockEvent();

  let orderHashParam = new ethereum.EventParam("orderHash", ethereum.Value.fromBytes(orderHash))
  let orderNonceParam = new ethereum.EventParam("orderNonce", ethereum.Value.fromSignedBigInt(orderNonce))
  let takerParam = new ethereum.EventParam("taker", ethereum.Value.fromAddress(taker))
  let makerParam = new ethereum.EventParam("maker", ethereum.Value.fromAddress(maker))
  let strategyParam = new ethereum.EventParam("strategy", ethereum.Value.fromAddress(strategy))
  let collectionParam = new ethereum.EventParam("collection", ethereum.Value.fromAddress(collection))
  let tokenIdParam = new ethereum.EventParam("tokenId", ethereum.Value.fromSignedBigInt(tokenId))
  let currencyParam = new ethereum.EventParam("currency", ethereum.Value.fromAddress(currency))
  let amountParam = new ethereum.EventParam("amount", ethereum.Value.fromSignedBigInt(amount))
  let priceParam = new ethereum.EventParam("amount", ethereum.Value.fromSignedBigInt(price))

  let takerAskEvent = new TakerAsk(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    [orderHashParam, orderNonceParam, takerParam, makerParam, strategyParam, currencyParam, collectionParam, tokenIdParam, amountParam, priceParam ],
    mockEvent.receipt
  );

  return takerAskEvent
}

export function createTakerBidEvent(
  orderHash: Bytes,
  orderNonce: BigInt,
  taker: Address,
  maker: Address,
  strategy: Address,          
  currency: Address,
  collection: Address,
  tokenId: BigInt,
  amount: BigInt,
  price: BigInt
): TakerBid {
  let mockEvent = newMockEvent();

  let orderHashParam = new ethereum.EventParam("orderHash", ethereum.Value.fromBytes(orderHash))
  let orderNonceParam = new ethereum.EventParam("orderNonce", ethereum.Value.fromSignedBigInt(orderNonce))
  let takerParam = new ethereum.EventParam("taker", ethereum.Value.fromAddress(taker))
  let makerParam = new ethereum.EventParam("maker", ethereum.Value.fromAddress(maker))
  let strategyParam = new ethereum.EventParam("strategy", ethereum.Value.fromAddress(strategy))
  let collectionParam = new ethereum.EventParam("collection", ethereum.Value.fromAddress(collection))
  let tokenIdParam = new ethereum.EventParam("tokenId", ethereum.Value.fromSignedBigInt(tokenId))
  let currencyParam = new ethereum.EventParam("currency", ethereum.Value.fromAddress(currency))
  let amountParam = new ethereum.EventParam("amount", ethereum.Value.fromSignedBigInt(amount))
  let priceParam = new ethereum.EventParam("amount", ethereum.Value.fromSignedBigInt(price))

  let takerBidEvent = new TakerBid(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    [orderHashParam, orderNonceParam, takerParam, makerParam, strategyParam, currencyParam, collectionParam, tokenIdParam, amountParam, priceParam ],
    mockEvent.receipt
  );

  return takerBidEvent
}
