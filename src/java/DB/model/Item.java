/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB.model;

/**
 *
 * @author Rene
 */
public class Item {
    
    private int id;
    private String itemName;
    private String numItem;
    private String gotItem;
    
    
    public Item(int id, String itemName, String numItem, String gotItem) {
        this.id = id;
        this.itemName = itemName;
        this.numItem = numItem;
        this.gotItem = gotItem;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the itemName
     */
    public String getItemName() {
        return itemName;
    }

    /**
     * @param itemName the itemName to set
     */
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    /**
     * @return the numItem
     */
    public String getNumItem() {
        return numItem;
    }

    /**
     * @param numItem the numItem to set
     */
    public void setNumItem(String numItem) {
        this.numItem = numItem;
    }

    /**
     * @return the gotItem
     */
    public String getGotItem() {
        return gotItem;
    }

    /**
     * @param gotItem the gotItem to set
     */
    public void setGotItem(String gotItem) {
        this.gotItem = gotItem;
    }
    
    
    
}
