class Sex < ActiveHash::Base
  self.data = [
    {id: 1, name: '雄'},
    {id: 2, name: '雌'},
    {id: 3, name: '不明'}
  ]
end