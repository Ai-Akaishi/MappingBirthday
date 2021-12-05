# Mappin'Birthday

(Minecraft 1.16.2+) Enable to Save Data of a Map in its Tag.  
地図のデータをタグの中に記録するデータパック

# 動作確認済みバージョン / Verified minecraft versions

- 1.18

以下のバージョンは右のReleasesからどうぞ。  
For the following versions, please check Releases on the right.

- 1.16.2
- 1.17.x

# 使い方/How To Use

以下のデータを取得できます。 / You can get the data below.

```
作成時のX座標 / X coordinate when created  
Item.tag.Mapping.X  
  
作成時のY座標 / Y coordinate when created  
Item.tag.Mapping.Y  
  
作成時のZ座標 / Z coordinate when created   
Item.tag.Mapping.Z  
  
作成時の時間 / Gametime when created  
Item.tag.Mapping.Time  
  
作成時のディメンション / Dimension when created  
Item.tag.Mapping.Dimension  
  
作成者のUUID / UUID of the creator  
Item.tag.Mapping.CreatedBy  
  
  
現在の縮尺(1→2→4→8→16) / Current Scale  
Item.tag.Mapping.Scale  
  
現在の地図の辺の長さ(128→256→512→1024→2048) / Current length of a side  
Item.tag.Mapping.Length  
  
現在のX座標の範囲([0]に小さい方の端の座標、[1]に大きい方の端) / Current range of X([0] is the smaller, [1] is the larger)  
Item.tag.Mapping.Range.X  
  
現在のZ座標の範囲([0]に小さい方の端の座標、[1]に大きい方の端) / Current range of Z([0] is the smaller, [1] is the larger)  
Item.tag.Mapping.Range.Z  
  
現在のロック状態 / Current lock state  
Item.tag.Mapping.Locked  
  
  
地図番号の履歴(古い順から現在のものまで) / History of map numbers from oldest to newest  
Item.tag.Mapping.History  
  
地図の変更操作の差分 / Difference from the prior  
Item.tag.Mapping.Diff  
例) 一つ前の地図データにする / ex) Revert to the prior data  
data modify entity @s Item.tag merge from entity @s Item.tag.Mapping.Diff
```

プラグインタグを利用することで、作成時、縮尺変更時、ロック時に処理を追加できます。 / You can add processes on creating, scaling, and locking using plugin tag.

```
地図のデータはストレージmapping_birthday: tagに入っています。  
実行者および実行場所は全て、地図を操作したプレイヤーです。  
※縮尺変更またはロック時に地図がドロップされた場合は、それを拾ったプレイヤーが操作したと見做されます。  
Storage 'mapping_birthday: tag' is the data of the map.  
Your functions are called as/at the player who operates the map.  
Notice: If a map is dropped when it is scaled or locked, it is assumed that the player who picked it up operated it.  
  
作成時に処理を追加したい時 / If you add processes on creating  
#mapping_birthday:plugins/createdというfunctionタグを作成し、好きなファンクションを設定してね。  
Prepare a function tag called #mapping_birthday:plugins/created and put your function in it.  
  
縮尺変更時に処理を追加したい時 / If you add processes on scaling  
#mapping_birthday:plugins/scaledというfunctionタグを作成し、好きなファンクションを設定してね。  
Prepare a function tag called #mapping_birthday:plugins/scaled and put your function in it.  
  
ロック時に処理を追加したい時 / If you add processes on locking  
#mapping_birthday:plugins/lockedというfunctionタグを作成し、好きなファンクションを設定してね。  
Prepare a function tag called #mapping_birthday:plugins/locked and put your function in it.  
```

# 連絡はこちら/Contact

https://twitter.com/AiAkaishi

# ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
