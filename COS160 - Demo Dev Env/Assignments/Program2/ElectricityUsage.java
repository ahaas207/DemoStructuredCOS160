/*
 Name: Aimee Haas
 COS 160 Spring 2021 Prof. MacLeod, Mon/Wed 12:30
 Program #2
 File Name: ElectricityUsage.java
 */

public class ElectricityUsage {

    public static void main(String[] args) {

        // input values
        double usageHoursPerDay =8;    // hours computer is on per day
        double usageDaysPerWeek = 5;    // days computer is used per week
        double usageWeeksPerYear = 50;  // weeks computer is used per year
        double wattsPerHour = 113;          // watts used by Macbook Pro per hour found in About This Mac

        double CMPcostPerKWH = 0.145;       // prices of power per kilowatt hour
        double CMPlbsCO2perKWH = 0.58815;   // pounds of CO2 generated per KWH
        
     // values to be calculated
        double usageHoursPerYear = (usageHoursPerDay  * usageDaysPerWeek) * usageWeeksPerYear;
        double usageKWHPerYear = (usageHoursPerYear * wattsPerHour) / 1000.00;
        double costPerYear = usageKWHPerYear * CMPcostPerKWH;
        double lbsCO2PerYear = usageKWHPerYear * CMPlbsCO2perKWH;
        
       // values to be printed
        System.out.println("Computer Energy Audit:\n");
        System.out.println("Your computer uses " + wattsPerHour + " watts.");
        System.out.println("It is on " + usageHoursPerDay + " hours/day, " + usageDaysPerWeek + " days/week, " + usageWeeksPerYear + " weeks/year.");
        System.out.println("This equals " + usageHoursPerYear + " hours/year.");
        System.out.println("This uses " + usageKWHPerYear + " KWH/year.");
        System.out.println("It will cost " + costPerYear + " $/year for electricity." );
        System.out.println("The CO2 pollution produced will be " + lbsCO2PerYear +" lbs.");
        
       

    }

}
