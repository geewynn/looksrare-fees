import { ethereum, Address, BigInt, Bytes } from "@graphprotocol/graph-ts";

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
export const takerAskAmount = BigInt.fromString("1");
export const price = BigInt.fromString("1205499999900000000");
