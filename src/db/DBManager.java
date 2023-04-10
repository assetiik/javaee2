package db;

import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Tasks> zadanie = new ArrayList<>();

    private static int id = 1;

    public static ArrayList<Tasks> getTasks(){
        return zadanie;
    }
    public  static void addTasks(Tasks tasks){
        tasks.setId(id);
        zadanie.add(tasks);
        id++;
    }

    public static Tasks getTask(int id){
        return zadanie.stream().
                filter(tasks -> tasks.getId()==id).
                findFirst().
                orElse(null);
    }

    public static void updateTask(Tasks task){
        for (int i = 0; i < zadanie.size(); i++){
            if (zadanie.get(i).getId() == task.getId()){
                zadanie.set(i, task);
                break;
            }
        }
    }

    public static void deleteTask(int id){
        for (int i = 0; i < zadanie.size(); i++){
            if (zadanie.get(id).getId()==id){
                zadanie.remove(i);
                break;
            }
        }
    }

}
