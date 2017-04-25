def removeAll(x)
  current = @head
  while current.next != nil
    if current.next.data == x
      current.next = current.next.next
    else
      current = current.next
    end
  end
  # catches case that head contains the data we want to delete
  if @head.data == x
    @head = @head.next
  end
end
