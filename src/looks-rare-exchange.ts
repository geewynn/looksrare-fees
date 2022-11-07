import {
  RoyaltyPayment as RoyaltyPaymentEvent,
  TakerAsk as TakerAskEvent,
  TakerBid as TakerBidEvent
} from "../generated/LooksRareExchange/LooksRareExchange"
import {
  RoyaltyPayment,
  Transaction
} from "../generated/schema"

export function handleRoyaltyPayment(event: RoyaltyPaymentEvent): void {
  // id = transaction hash plus index
  let id = event.transaction.hash.toHex() + "-" + event.logIndex.toString();
  let royaltyFee = new RoyaltyPayment(id);

  royaltyFee.collection = event.params.collection
  royaltyFee.tokenId = event.params.tokenId
  royaltyFee.royaltyRecipient = event.params.royaltyRecipient
  royaltyFee.currency = event.params.currency
  royaltyFee.amount = event.params.amount
  royaltyFee.save()
}

export function handleTakerAsk(event: TakerAskEvent): void {
  // orderhash + transaction hash
  let id = event.params.orderHash.toHex() + "-" + event.transaction.hash.toHex();
  let transaction = new Transaction(id);

  transaction.orderHash = event.params.orderHash
  transaction.orderNonce = event.params.orderNonce
  transaction.taker = event.params.taker
  transaction.maker = event.params.maker
  transaction.currency = event.params.currency
  transaction.collection = event.params.collection
  transaction.isTakerAsk = true;
  transaction.tokenId = event.params.tokenId
  transaction.amount = event.params.amount
  transaction.price = event.params.price
  transaction.save()
}

export function handleTakerBid(event: TakerBidEvent): void {
  // orderhash + transaction hash
  let id = event.params.orderHash.toHex() + "-" + event.transaction.hash.toHex();
  let transaction = new Transaction(id);

  transaction.orderHash = event.params.orderHash
  transaction.orderNonce = event.params.orderNonce
  transaction.taker = event.params.taker
  transaction.maker = event.params.maker
  transaction.currency = event.params.currency
  transaction.collection = event.params.collection
  transaction.isTakerAsk = false;
  transaction.tokenId = event.params.tokenId
  transaction.amount = event.params.amount
  transaction.price = event.params.price
  transaction.save()
}
