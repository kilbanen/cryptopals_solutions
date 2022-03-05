package main

import "fmt"
import "encoding/hex"
import "encoding/base64"

func main() {
  hexString :=
  "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
  rawBytes, err := hex.DecodeString(hexString)
  if err != nil {
    fmt.Println("Unable to convert hex to byte. ", err)
  }
  base64String := base64.StdEncoding.EncodeToString(rawBytes)
  fmt.Println(base64String)
}
