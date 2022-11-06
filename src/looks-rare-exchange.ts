import {
  RoyaltyPayment as RoyaltyPaymentEvent,
  TakerAsk as TakerAskEvent,
  TakerBid as TakerBidEvent
} from "../generated/LooksRareExchange/LooksRareExchange"
import {
  RoyaltyPayment,
  Transaction
} from "../generated/schema"
import { LooksRareExchange } from "../generated/LooksRareExchange/LooksRareExchange"


export function handleRoyaltyPayment(event: RoyaltyPaymentEvent): void {
  let entity = new RoyaltyPayment(
    event.transaction.hash.toHex() + "-" + event.logIndex.toString()
  )
  entity.collection = event.params.collection
  entity.tokenId = event.params.tokenId
  entity.royaltyRecipient = event.params.royaltyRecipient
  entity.currency = event.params.currency
  entity.amount = event.params.amount
  entity.save()
}

export function handleTakerAsk(event: TakerAskEvent): void {
  let id = event.params.orderHash.toHex() + "-" + event.transaction.hash.toHex();
  let transaction = new Transaction(id)

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
  let id = event.params.orderHash.toHex() + "-" + event.transaction.hash.toHex();
  let transaction = new Transaction(id)  

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
