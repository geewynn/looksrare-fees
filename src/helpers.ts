import { Address, BigInt, Bytes } from "@graphprotocol/graph-ts";
import {
  Collection,
  Item,
  RoyaltyPayment,
  Transaction,
  TransactionRoyaltyPayment,
  User,
} from "../generated/schema";

export function getOrCreateCollection(collectionAddress: Address): Collection {
  let collection = Collection.load(collectionAddress.toHexString());
  if (!collection) {
    collection = new Collection(collectionAddress.toHexString());
    collection.save();
  }
  return collection;
}

export function getOrCreateUser(UserAddress: Address): User {
  let user = User.load(UserAddress.toHexString());
  if (!user) {
    user = new User(UserAddress.toHexString());
    user.save();
  }
  return user;
}

export function getOrCreateItem(
  collectionAddress: Address,
  tokenId: BigInt
): Item {
  let item = Item.load(
    collectionAddress
      .toHexString()
      .concat("-")
      .concat(tokenId.toString())
  );
  if (!item) {
    item = new Item(collectionAddress.toHexString());
    item.collection = collectionAddress.toHexString();
    item.save();
  }
  return item;
}

export function createRoyaltyPayment(
  id: string,
  collection: Collection,
  item: Item,
  tokenId: BigInt,
  royaltyRecipient: User,
  currency: Address,
  amount: BigInt
): RoyaltyPayment {
  let royaltyFee = new RoyaltyPayment(id);

  royaltyFee.collection = collection.id;
  royaltyFee.item = item.id;
  royaltyFee.tokenId = tokenId;
  royaltyFee.royaltyRecipient = royaltyRecipient.id;
  royaltyFee.currency = currency;
  royaltyFee.amount = amount;
  royaltyFee.save();

  return royaltyFee;
}

export function createTransactionRoyaltyPayment(
  id: string,
  royaltyPayment: RoyaltyPayment
): void {
  let transactionRoyaltyPayment = new TransactionRoyaltyPayment(id);
  transactionRoyaltyPayment.royaltyPayment = royaltyPayment.id;
  transactionRoyaltyPayment.save();
}



export function createTransaction(
  id: string,
  orderHash: Bytes,
  orderNonce: BigInt,
  taker: User,
  maker: User,
  currency: Bytes,
  collection: string,
  isTakerAsk: boolean,
  tokenId: BigInt,
  item: string,
  amount: BigInt,
  price: BigInt,
  royaltyPayment: TransactionRoyaltyPayment
): void {
    let transaction = new Transaction(id);
    transaction.orderHash = orderHash;
    transaction.orderNonce = orderNonce;
    transaction.taker = taker.id;
    transaction.maker = maker.id;
    transaction.currency = currency;
    transaction.collection = collection; // eXample
    transaction.royaltyPayment = royaltyPayment.royaltyPayment;
    transaction.isTakerAsk = isTakerAsk;
    transaction.tokenId = tokenId;
    transaction.item = item
    transaction.amount = amount;
    transaction.price = price;
    transaction.save();
}
