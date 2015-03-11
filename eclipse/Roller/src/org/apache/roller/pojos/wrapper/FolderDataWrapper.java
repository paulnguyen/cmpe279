package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.FolderData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.FolderData
 */
public class FolderDataWrapper {

    // keep a reference to the wrapped pojo
    private FolderData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private FolderDataWrapper(FolderData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static FolderDataWrapper wrap(FolderData toWrap) {
        if(toWrap != null)
            return new FolderDataWrapper(toWrap);

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
    public boolean isInUse()
    {   
        return this.pojo.isInUse();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public boolean descendentOf(org.apache.roller.pojos.FolderData ancestor)
        throws org.apache.roller.RollerException
    {   
        return this.pojo.descendentOf(ancestor);
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
    public java.lang.String getPath()
        throws org.apache.roller.RollerException
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
    public org.apache.roller.pojos.wrapper.FolderDataWrapper getParent()
        throws org.apache.roller.RollerException
    {
        return org.apache.roller.pojos.wrapper.FolderDataWrapper.wrap(this.pojo.getParent());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo-collection"
     *
     * This method returns a collection of pojos so we need to wrap
     * each pojo that is part of the collection.
     */
    public java.util.List getFolders()
        throws org.apache.roller.RollerException
    {
        java.util.List initialCollection = this.pojo.getFolders();

        // iterate through and wrap
        // we force the use of an ArrayList because it should be good enough to cover
        // for any Collection type we encounter.
        java.util.ArrayList wrappedCollection = new java.util.ArrayList(initialCollection.size());
        java.util.Iterator it = initialCollection.iterator();
        int i = 0;
        while(it.hasNext()) {
            wrappedCollection.add(i, org.apache.roller.pojos.wrapper.FolderDataWrapper.wrap((org.apache.roller.pojos.FolderData) it.next()));
            i++;
        }

        return wrappedCollection;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo-collection"
     *
     * This method returns a collection of pojos so we need to wrap
     * each pojo that is part of the collection.
     */
    public java.util.List getBookmarks()
    {
        java.util.Set initialCollection = this.pojo.getBookmarks();

        // iterate through and wrap
        // we force the use of an ArrayList because it should be good enough to cover
        // for any Collection type we encounter.
        java.util.ArrayList wrappedCollection = new java.util.ArrayList(initialCollection.size());
        java.util.Iterator it = initialCollection.iterator();
        int i = 0;
        while(it.hasNext()) {
            wrappedCollection.add(i, org.apache.roller.pojos.wrapper.BookmarkDataWrapper.wrap((org.apache.roller.pojos.BookmarkData) it.next()));
            i++;
        }

        return wrappedCollection;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo-collection"
     *
     * This method returns a collection of pojos so we need to wrap
     * each pojo that is part of the collection.
     */
    public java.util.List retrieveBookmarks(boolean subfolders)
        throws org.apache.roller.RollerException
    {
        java.util.List initialCollection = this.pojo.retrieveBookmarks(subfolders);

        // iterate through and wrap
        // we force the use of an ArrayList because it should be good enough to cover
        // for any Collection type we encounter.
        java.util.ArrayList wrappedCollection = new java.util.ArrayList(initialCollection.size());
        java.util.Iterator it = initialCollection.iterator();
        int i = 0;
        while(it.hasNext()) {
            wrappedCollection.add(i, org.apache.roller.pojos.wrapper.BookmarkDataWrapper.wrap((org.apache.roller.pojos.BookmarkData) it.next()));
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
    public org.apache.roller.pojos.FolderData getPojo() {
        return this.pojo;
    }

}
