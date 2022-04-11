
public class ClientPileBornee {

    public static void main(String[] args) throws FullStackException{
        try {
            PileBornee p = new PileBornee(3);
            p.push(11);
            System.out.println(p.top());
            p.push(22);
            System.out.println(p.top());
            p.push(33);
            System.out.println(p.top());
            p.push(44);
            System.out.println(p.top());
            p.pop();
            System.out.println(p.top());
            p.pop();
            System.out.println(p.top());
            p.pop();
            System.out.println(p.top());
        } catch (EmptyStackException e) {
            System.out.println(e);
        }
    }
}
