# Mappin'Birthday

(Minecraft 1.16.2+) Enable to Save Data of a Map in its Tag.  
地図のデータをタグの中に記録するデータパック

# 使い方/How To Use

以下のデータを取得できます。

```
作成時のX座標  
Item.tag.Mapping.X  
  
作成時のY座標  
Item.tag.Mapping.Y  
  
作成時のY座標  
Item.tag.Mapping.Z  
  
作成時の時間  
Item.tag.Mapping.Time  
  
作成時のディメンション  
Item.tag.Mapping.Dimension  
  
作成者のUUID  
Item.tag.Mapping.CreatedBy  
  
  
現在の縮尺(1→2→4→8→16)  
Item.tag.Mapping.Scale  
  
現在の地図の辺の長さ(128→256→512→1024→2048)  
Item.tag.Mapping.Length  
  
現在のX座標の範囲([0]に小さい方の端の座標、[1]に大きい方の端)  
Item.tag.Mapping.Range.X  
  
現在のZ座標の範囲([0]に小さい方の端の座標、[1]に大きい方の端)  
Item.tag.Mapping.Range.Z  
  
現在のロック状態  
Item.tag.Mapping.Locked  
  
  
地図番号の履歴(古い順から現在のものまで)  
Item.tag.Mapping.History  
  
地図の変更操作の差分  
Item.tag.Mapping.Diff  
例) 一つ前の地図データにする  
data modify entity @s Item.tag merge from entity @s Item.tag.Mapping.Diff
```

# 連絡はこちら/Contact

https://twitter.com/AiAkaishi

# ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
