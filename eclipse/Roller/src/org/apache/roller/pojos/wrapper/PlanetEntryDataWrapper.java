package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.PlanetEntryData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.PlanetEntryData
 */
public class PlanetEntryDataWrapper {

    // keep a reference to the wrapped pojo
    private PlanetEntryData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private PlanetEntryDataWrapper(PlanetEntryData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static PlanetEntryDataWrapper wrap(PlanetEntryData toWrap) {
        if(toWrap != null)
            return new PlanetEntryDataWrapper(toWrap);

        return null;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getId()
    {   
        return this.pojo.getId();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getCategoriesString()
    {   
        return this.pojo.getCategoriesString();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getAuthor()
    {   
        return this.pojo.getAuthor();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getText()
    {   
        return this.pojo.getText();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getGuid()
    {   
        return this.pojo.getGuid();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getHandle()
    {   
        return this.pojo.getHandle();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.sql.Timestamp getPubTime()
    {   
        return this.pojo.getPubTime();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getPermalink()
    {   
        return this.pojo.getPermalink();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getTitle()
    {   
        return this.pojo.getTitle();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.sql.Timestamp getUpdateTime()
    {   
        return this.pojo.getUpdateTime();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.WeblogCategoryDataWrapper getCategory()
    {
        return org.apache.roller.pojos.wrapper.WeblogCategoryDataWrapper.wrap(this.pojo.getCategory());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.UserDataWrapper getCreator()
    {
        return org.apache.roller.pojos.wrapper.UserDataWrapper.wrap(this.pojo.getCreator());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getSummary()
    {   
        return this.pojo.getSummary();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.PlanetSubscriptionDataWrapper getWebsite()
    {
        return org.apache.roller.pojos.wrapper.PlanetSubscriptionDataWrapper.wrap(this.pojo.getWebsite());
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.PlanetEntryData getPojo() {
        return this.pojo;
    }

}
