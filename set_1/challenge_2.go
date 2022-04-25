package main

import "fmt"
import "encoding/hex"

func xor(x, y string) string  {
  xBytes, xErr := hex.DecodeString(x)
  if xErr != nil {
    fmt.Println("Unable to convert hex to byte. ", xErr)
  }
  yBytes, yErr := hex.DecodeString(y)
  if yErr != nil {
    fmt.Println("Unable to convert hex to byte. ", yErr)
  }
  for i := 0; i < len(xBytes); i++ {
    xBytes[i] ^= yBytes[i]
  }
  result := hex.EncodeToString(xBytes)
  return result
}

func main() {
  x := "1c0111001f010100061a024b53535009181c"
  y := "686974207468652062756c6c277320657965"
  fmt.Println(xor(x, y))
}
