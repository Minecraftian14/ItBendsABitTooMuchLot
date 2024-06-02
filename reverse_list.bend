def last(list):
  match list:
    case List/Cons:
      inner_list = list.tail
      match inner_list:
        case List/Cons:
          return last(inner_list)
        case List/Nil:
          return list.head
    case List/Nil:
      return List/Nil

def except_last(list):
  match list:
    case List/Cons:
      inner_list = list.tail
      match inner_list:
        case List/Cons:
          return List/Cons { head: list.head, tail: except_last(inner_list) }
        case List/Nil:
          return List/Nil
    case List/Nil:
      return List/Nil

def lol(list):
  match list:
    case List/Cons:
      last_head = last(list)
      first_list = except_last(list)
      return List/Cons { head: last_head, tail: lol(first_list) }
    case List/Nil:
      return List/Nil


def main():
  list = [1, 2, 3, 4, 5, 3, 5, 2, 4, 1114]
  return lol(list)