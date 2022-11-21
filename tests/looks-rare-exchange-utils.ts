import { newMockEvent } from "matchstick-as"
import { ethereum, Address, BigInt, Bytes } from "@graphprotocol/graph-ts"
import {
  RoyaltyPayment,
  TakerAsk,
  TakerBid
} from "../generated/LooksRareExchange/LooksRareExchange"



export const collectionAddress = Address.fromString(
  "0x34d85c9CDeB23FA97cb08333b511ac86E1C4E258"
);
export const tokenIds = BigInt.fromString("73467");
export const receipientAddress = Address.fromString(
  "0x37ceB4bA093D40234c6fB312d9791B67c04eF49A"
);
export const currencyAddress = Address.fromString(
  "0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2"
);
export const amount = BigInt.fromString("6027499999500000");

export const taker = Address.fromString("0x13928eB9A86c8278a45B6fF2935c7730b58AC675");
export const maker = Address.fromString("0x20D51d9B528c9feBB0424337A76e1E8299Ae9aaa");
export const orderHash = Bytes.fromHexString(
  "5C511DC30E475A22FEFA3E1FF3E85872559487D736AA85BE85A2EBC1DFCFDC0D"
);
export const orderNonce = BigInt.fromString("154");

export const strat = Address.fromString("0x579af6FD30BF83a5Ac0D636bc619f98DBdeb930c");
export const takerAmount = BigInt.fromString("1");
export const price = BigInt.fromString("1205499999900000000");


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
