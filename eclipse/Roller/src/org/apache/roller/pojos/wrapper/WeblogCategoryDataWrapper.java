package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.WeblogCategoryData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.WeblogCategoryData
 */
public class WeblogCategoryDataWrapper {

    // keep a reference to the wrapped pojo
    private WeblogCategoryData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private WeblogCategoryDataWrapper(WeblogCategoryData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static WeblogCategoryDataWrapper wrap(WeblogCategoryData toWrap) {
        if(toWrap != null)
            return new WeblogCategoryDataWrapper(toWrap);

        return null;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getObjectPropertyName()
    {   
        return this.pojo.getObjectPropertyName();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getAncestorPropertyName()
    {   
        return this.pojo.getAncestorPropertyName();
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
    public java.lang.String getName()
    {   
        return this.pojo.getName();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getDescription()
    {   
        return this.pojo.getDescription();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getImage()
    {   
        return this.pojo.getImage();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getPath()
    {   
        return this.pojo.getPath();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.WebsiteDataWrapper getWebsite()
    {
        return org.apache.roller.pojos.wrapper.WebsiteDataWrapper.wrap(this.pojo.getWebsite());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.WeblogCategoryDataWrapper getParent()
        throws org.apache.roller.RollerException
    {
        return org.apache.roller.pojos.wrapper.WeblogCategoryDataWrapper.wrap(this.pojo.getParent());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo-collection"
     *
     * This method returns a collection of pojos so we need to wrap
     * each pojo that is part of the collection.
     */
    public java.util.List getWeblogCategories()
        throws org.apache.roller.RollerException
    {
        java.util.List initialCollection = this.pojo.getWeblogCategories();

        // iterate through and wrap
        // we force the use of an ArrayList because it should be good enough to cover
        // for any Collection type we encounter.
        java.util.ArrayList wrappedCollection = new java.util.ArrayList(initialCollection.size());
        java.util.Iterator it = initialCollection.iterator();
        int i = 0;
        while(it.hasNext()) {
            wrappedCollection.add(i, org.apache.roller.pojos.wrapper.WeblogCategoryDataWrapper.wrap((org.apache.roller.pojos.WeblogCategoryData) it.next()));
            i++;
        }

        return wrappedCollection;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public boolean descendentOf(org.apache.roller.pojos.WeblogCategoryData ancestor)
        throws org.apache.roller.RollerException
    {   
        return this.pojo.descendentOf(ancestor);
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public boolean isInUse()
    {   
        return this.pojo.isInUse();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo-collection"
     *
     * This method returns a collection of pojos so we need to wrap
     * each pojo that is part of the collection.
     */
    public java.util.List retrieveWeblogEntries(boolean subcats)
        throws org.apache.roller.RollerException
    {
        java.util.List initialCollection = this.pojo.retrieveWeblogEntries(subcats);

        // iterate through and wrap
        // we force the use of an ArrayList because it should be good enough to cover
        // for any Collection type we encounter.
        java.util.ArrayList wrappedCollection = new java.util.ArrayList(initialCollection.size());
        java.util.Iterator it = initialCollection.iterator();
        int i = 0;
        while(it.hasNext()) {
            wrappedCollection.add(i, org.apache.roller.pojos.wrapper.WeblogEntryDataWrapper.wrap((org.apache.roller.pojos.WeblogEntryData) it.next()));
            i++;
        }

        return wrappedCollection;
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.WeblogCategoryData getPojo() {
        return this.pojo;
    }

}
