package system;

public class ScoreKeeper {
    private Score a;
    private Score b;

    public void ScoreKeeper() {
        this.a = new Score(0);
        this.b = new Score(0);
    }

    public void teamAOne() {
        a.one();
    }

    public void teamBOne() {
        b.one();
    }

    public void teamATwo() {
        a.two();
    }

    public void teamBTwo() {
        b.two();
    }

    public void teamAThree() {
        a.three();
    }

    public void teamBThree() {
        b.three();
    }


    public int getScoreTeamA () {
        return a.getScore();
    }

    public int getScoreTeamB () {
        return b.getScore();
    }
}
