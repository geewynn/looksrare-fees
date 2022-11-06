// THIS IS AN AUTOGENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY.

import {
  TypedMap,
  Entity,
  Value,
  ValueKind,
  store,
  Bytes,
  BigInt,
  BigDecimal
} from "@graphprotocol/graph-ts";

export class User extends Entity {
  constructor(id: string) {
    super();
    this.set("id", Value.fromString(id));
  }

  save(): void {
    let id = this.get("id");
    assert(id != null, "Cannot save User entity without an ID");
    if (id) {
      assert(
        id.kind == ValueKind.STRING,
        `Entities of type User must have an ID of type String but the id '${id.displayData()}' is of type ${id.displayKind()}`
      );
      store.set("User", id.toString(), this);
    }
  }

  static load(id: string): User | null {
    return changetype<User | null>(store.get("User", id));
  }

  get id(): string {
    let value = this.get("id");
    return value!.toString();
  }

  set id(value: string) {
    this.set("id", Value.fromString(value));
  }

  get address(): Bytes {
    let value = this.get("address");
    return value!.toBytes();
  }

  set address(value: Bytes) {
    this.set("address", Value.fromBytes(value));
  }
}

export class Collection extends Entity {
  constructor(id: string) {
    super();
    this.set("id", Value.fromString(id));
  }

  save(): void {
    let id = this.get("id");
    assert(id != null, "Cannot save Collection entity without an ID");
    if (id) {
      assert(
        id.kind == ValueKind.STRING,
        `Entities of type Collection must have an ID of type String but the id '${id.displayData()}' is of type ${id.displayKind()}`
      );
      store.set("Collection", id.toString(), this);
    }
  }

  static load(id: string): Collection | null {
    return changetype<Collection | null>(store.get("Collection", id));
  }

  get id(): string {
    let value = this.get("id");
    return value!.toString();
  }

  set id(value: string) {
    this.set("id", Value.fromString(value));
  }

  get address(): Bytes {
    let value = this.get("address");
    return value!.toBytes();
  }

  set address(value: Bytes) {
    this.set("address", Value.fromBytes(value));
  }
}

export class RoyaltyPayment extends Entity {
  constructor(id: string) {
    super();
    this.set("id", Value.fromString(id));
  }

  save(): void {
    let id = this.get("id");
    assert(id != null, "Cannot save RoyaltyPayment entity without an ID");
    if (id) {
      assert(
        id.kind == ValueKind.STRING,
        `Entities of type RoyaltyPayment must have an ID of type String but the id '${id.displayData()}' is of type ${id.displayKind()}`
      );
      store.set("RoyaltyPayment", id.toString(), this);
    }
  }

  static load(id: string): RoyaltyPayment | null {
    return changetype<RoyaltyPayment | null>(store.get("RoyaltyPayment", id));
  }

  get id(): string {
    let value = this.get("id");
    return value!.toString();
  }

  set id(value: string) {
    this.set("id", Value.fromString(value));
  }

  get collection(): Bytes {
    let value = this.get("collection");
    return value!.toBytes();
  }

  set collection(value: Bytes) {
    this.set("collection", Value.fromBytes(value));
  }

  get tokenId(): BigInt {
    let value = this.get("tokenId");
    return value!.toBigInt();
  }

  set tokenId(value: BigInt) {
    this.set("tokenId", Value.fromBigInt(value));
  }

  get royaltyRecipient(): Bytes {
    let value = this.get("royaltyRecipient");
    return value!.toBytes();
  }

  set royaltyRecipient(value: Bytes) {
    this.set("royaltyRecipient", Value.fromBytes(value));
  }

  get currency(): Bytes {
    let value = this.get("currency");
    return value!.toBytes();
  }

  set currency(value: Bytes) {
    this.set("currency", Value.fromBytes(value));
  }

  get amount(): BigInt {
    let value = this.get("amount");
    return value!.toBigInt();
  }

  set amount(value: BigInt) {
    this.set("amount", Value.fromBigInt(value));
  }
}

export class Transaction extends Entity {
  constructor(id: string) {
    super();
    this.set("id", Value.fromString(id));
  }

  save(): void {
    let id = this.get("id");
    assert(id != null, "Cannot save Transaction entity without an ID");
    if (id) {
      assert(
        id.kind == ValueKind.STRING,
        `Entities of type Transaction must have an ID of type String but the id '${id.displayData()}' is of type ${id.displayKind()}`
      );
      store.set("Transaction", id.toString(), this);
    }
  }

  static load(id: string): Transaction | null {
    return changetype<Transaction | null>(store.get("Transaction", id));
  }

  get id(): string {
    let value = this.get("id");
    return value!.toString();
  }

  set id(value: string) {
    this.set("id", Value.fromString(value));
  }

  get orderHash(): Bytes {
    let value = this.get("orderHash");
    return value!.toBytes();
  }

  set orderHash(value: Bytes) {
    this.set("orderHash", Value.fromBytes(value));
  }

  get orderNonce(): BigInt {
    let value = this.get("orderNonce");
    return value!.toBigInt();
  }

  set orderNonce(value: BigInt) {
    this.set("orderNonce", Value.fromBigInt(value));
  }

  get taker(): Bytes {
    let value = this.get("taker");
    return value!.toBytes();
  }

  set taker(value: Bytes) {
    this.set("taker", Value.fromBytes(value));
  }

  get maker(): Bytes {
    let value = this.get("maker");
    return value!.toBytes();
  }

  set maker(value: Bytes) {
    this.set("maker", Value.fromBytes(value));
  }

  get currency(): Bytes {
    let value = this.get("currency");
    return value!.toBytes();
  }

  set currency(value: Bytes) {
    this.set("currency", Value.fromBytes(value));
  }

  get collection(): Bytes {
    let value = this.get("collection");
    return value!.toBytes();
  }

  set collection(value: Bytes) {
    this.set("collection", Value.fromBytes(value));
  }

  get isTakerAsk(): boolean {
    let value = this.get("isTakerAsk");
    return value!.toBoolean();
  }

  set isTakerAsk(value: boolean) {
    this.set("isTakerAsk", Value.fromBoolean(value));
  }

  get tokenId(): BigInt {
    let value = this.get("tokenId");
    return value!.toBigInt();
  }

  set tokenId(value: BigInt) {
    this.set("tokenId", Value.fromBigInt(value));
  }

  get amount(): BigInt {
    let value = this.get("amount");
    return value!.toBigInt();
  }

  set amount(value: BigInt) {
    this.set("amount", Value.fromBigInt(value));
  }

  get price(): BigInt {
    let value = this.get("price");
    return value!.toBigInt();
  }

  set price(value: BigInt) {
    this.set("price", Value.fromBigInt(value));
  }

  get royaltyFee(): string {
    let value = this.get("royaltyFee");
    return value!.toString();
  }

  set royaltyFee(value: string) {
    this.set("royaltyFee", Value.fromString(value));
  }
}
