//creates listnode

public class ListNode implements Linkable
{
  private Comparable listNodeValue;
  private ListNode nextListNode;

  public ListNode()
  {
    listNodeValue = null;
    nextListNode = null;
  }

  public ListNode(Comparable value, int answer, ListNode next, ListNode next1)
  {
    listNodeValue=value;
    if (answer == 0) {
      nextListNode = next;
    }
    else nextListNode = next1;
  }

  public Comparable getValue()
  {
    return listNodeValue;
  }

  public ListNode getNext()
  {
     return nextListNode;
  }

  public void setValue(Comparable value)
  {
    listNodeValue = value;
  }

  public void setNext(Linkable next)
  {
    nextListNode = (ListNode)next;
  }
}
