def append_last(list, element):
  match list:
    case List/Nil:
      return List/Cons(element, List/Nil)
    case List/Cons:
      return List/Cons(list.head, append_last(list.tail, element))

def reverse_list(list):
  match list:
    # Empty List
    case List/Nil:
      return List/Nil

    case List/Cons:
      match list.tail:
        # Singleton List
        case List/Nil:
          return list

        # List with at least 2 elements
        case List/Cons:
          rev = reverse_list(list.tail)
          rev = append_last(rev, list.head)
          return rev

def main():
  list = [1, 2, 3, 4, 5, 3, 5, 2, 4, 1114]
  return reverse_list(list)
