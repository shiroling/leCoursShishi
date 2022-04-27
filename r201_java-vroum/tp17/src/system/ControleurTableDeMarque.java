package system;

public class ControleurTableDeMarque {
    ScoreKeeper sck;

    public void ControleurTableDeMarque() {
        sck = new ScoreKeeper();
    }

    public String getScore() {
        return "Le score est A : " + sck.getScoreTeamA() + "B : " + sck.getScoreTeamB();
    }

    public void actionPerformed(Event e) {
        switch(e){

            case PRESSBUTTONA1:
                sck.teamAOne();
                break;

            case PRESSBUTTONA2:
                sck.teamATwo();
                break;

            case PRESSBUTTONA3:
                sck.teamAThree();
                break;
            case PRESSBUTTONB1:
                sck.teamBOne();
                break;

            case PRESSBUTTONB2:
                sck.teamBTwo();
                break;

            case PRESSBUTTONB3:
                sck.teamBThree();
                break;
            default:
                System.out.println("Choix incorrect");
                break;
        }

    }
}
