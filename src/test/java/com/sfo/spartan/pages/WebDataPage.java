package com.sfo.spartan.pages;

import com.sfo.spartan.utils.ui.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class WebDataPage extends BasePage{
    @FindBy(className = "navbar-brand mb-0 h1")
    private static WebElement webDataPageHeader;

    @FindBy(id = "add_spartan_btn")
    private static WebElement addSpartanBtn;

    @FindBy(id = "back_to_home_btn")
    private static WebElement backToHomeBtn;

    @FindBy(xpath = "//a[@class='btn btn-success btn-lg float-right text-light']")
    private static WebElement totalSpartanNumber;

    @FindBy(xpath = "//p[@class='label label-info float-right']")
    private static WebElement loginMessage;

    @FindBy(xpath = "//p[@class='label label-info float-right']/span")
    private static WebElement userRole;

    @FindBy(id = "table")
    private static WebElement webDataTable;

    @FindBy(xpath = "//table[@id='table']//th[1]")
    private static WebElement idColumnTitle;

    @FindBy(xpath = "//table[@id='table']//th[2]")
    private static WebElement nameColumnTitle;

    @FindBy(xpath = "//table[@id='table']//th[3]")
    private static WebElement phoneColumnTitle;

    @FindBy(xpath = "//table[@id='table']//th[4]")
    private static WebElement genderColumnTitle;

    @FindBy(xpath = "//table[@id='table']//th[5]")
    private static WebElement viewColumnTitle;

    @FindBy(xpath = "//table[@id='table']//th[6]")
    private static WebElement editColumnTitle;

    @FindBy(xpath = "//table[@id='table']//th[7]")
    private static WebElement deleteColumnTitle;

    @FindBy(xpath = "//table[@id='table']//caption")
    private static WebElement totalRowNumberCaption;

    private static WebElement findCellElement(int rowNum, String columnName){
        String xpath = "";

        String idColumn = idColumnTitle.getText().toLowerCase();
        String nameColumn = nameColumnTitle.getText().toLowerCase();
        String phoneColumn = phoneColumnTitle.getText().toLowerCase();
        String genderColumn = genderColumnTitle.getText().toLowerCase();

        if (columnName.equalsIgnoreCase(idColumn)){
            xpath = "//table[@id='table']//tr[" + rowNum + "]//td[1]";
        }else if (columnName.equalsIgnoreCase(nameColumn)){
            xpath = "//table[@id='table']//tr[" + rowNum + "]//td[2]";
        }else if (columnName.equalsIgnoreCase(phoneColumn)){
            xpath = "//table[@id='table']//tr[" + rowNum + "]//td[3]";
        }else if (columnName.equalsIgnoreCase(genderColumn)){
            xpath = "//table[@id='table']//tr[" + rowNum + "]//td[4]//span";
        }else{
            System.out.println("There is no such a column name in Web Data table!!!");
        }

        return Driver.getDriver().findElement(By.xpath(xpath));
    }

    public static String getCellData(int rowNum, String columnName){
        String cellData = findCellElement(rowNum,columnName).getText();

        return cellData;
    }

}
