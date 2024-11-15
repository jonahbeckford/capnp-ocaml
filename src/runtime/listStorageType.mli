(** @canonical Capnp.ListStorageType  *)

type t =
  | Empty
  (** list(void), no storage required *)

  | Bit
  (** list(bool), tightly packed bits *)

  | Bytes1
  | Bytes2
  | Bytes4
  | Bytes8
  (** either primitive values or a data-only struct *)

  | Pointer
  (** either a pointer to an external object, or a pointer-only struct *)

  | Composite of int * int
  (** typical struct; parameters are per-element word size for data section
      and pointers section, respectively *)

val get_byte_count : t -> int

val to_string : t -> string
