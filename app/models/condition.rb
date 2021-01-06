class Condition < ActiveHash::Base
  self.data = [
    {id: 1, name: '良好'},
    {id: 2, name: 'ちょっと調子悪い'}
  ]
end