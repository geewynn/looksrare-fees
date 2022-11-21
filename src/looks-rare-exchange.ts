import {
  RoyaltyPayment as RoyaltyPaymentEvent,
  TakerAsk as TakerAskEvent,
  TakerBid as TakerBidEvent,
} from "../generated/LooksRareExchange/LooksRareExchange";
import {
  TransactionRoyaltyPayment,
} from "../generated/schema";
import {
  createRoyaltyPayment,
  createTransaction,
  createTransactionRoyaltyPayment,
  getOrCreateCollection,
  getOrCreateItem,
  getOrCreateUser,
} from "./helpers";

export function handleRoyaltyPayment(event: RoyaltyPaymentEvent): void {
  let collection = getOrCreateCollection(event.params.collection);
  let item = getOrCreateItem(event.params.collection, event.params.tokenId);
  let user = getOrCreateUser(event.params.royaltyRecipient);

  let id = event.transaction.hash.toHex() + "-" + event.logIndex.toString();

  let royaltyFee = createRoyaltyPayment(
    id,
    collection,
    item,
    event.params.tokenId,
    user,
    event.params.currency,
    event.params.amount
  );

  createTransactionRoyaltyPayment(
    event.transaction.hash.toHexString(),
    royaltyFee
  );
}

export function handleTakerAsk(event: TakerAskEvent): void {
  let taker = getOrCreateUser(event.params.taker);
  let maker = getOrCreateUser(event.params.maker);
  let id = event.transaction.hash.toHex();
  let collectionId = event.params.collection.toHexString();
  let itemId = event.params.collection
    .toHexString()
    .concat("-")
    .concat(event.params.tokenId.toHexString());

  let txRoyalty = TransactionRoyaltyPayment.load(id);
  if (txRoyalty) {
    createTransaction(
      id,
      event.params.orderHash,
      event.params.orderNonce,
      taker,
      maker,
      event.params.currency,
      collectionId,
      true,
      event.params.tokenId,
      itemId,
      event.params.amount,
      event.params.price,
      txRoyalty,
    );
  }
}

export function handleTakerBid(event: TakerBidEvent): void {
  let taker = getOrCreateUser(event.params.taker);
  let maker = getOrCreateUser(event.params.maker);
  let collectionId = event.params.collection.toHexString();
  let itemId = event.params.collection
    .toHexString()
    .concat("-")
    .concat(event.params.tokenId.toHexString());

  let txRoyalty = TransactionRoyaltyPayment.load(
    event.transaction.hash.toHexString()
  );

  let id = event.transaction.hash.toHexString();

  if (txRoyalty) {
    createTransaction(
      id,
      event.params.orderHash,
      event.params.orderNonce,
      taker,
      maker,
      event.params.currency,
      collectionId,
      false,
      event.params.tokenId,
      itemId,
      event.params.amount,
      event.params.price,
      txRoyalty,
    );
  }
}
