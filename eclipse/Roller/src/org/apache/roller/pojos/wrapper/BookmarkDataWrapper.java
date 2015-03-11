package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.BookmarkData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.BookmarkData
 */
public class BookmarkDataWrapper {

    // keep a reference to the wrapped pojo
    private BookmarkData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private BookmarkDataWrapper(BookmarkData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static BookmarkDataWrapper wrap(BookmarkData toWrap) {
        if(toWrap != null)
            return new BookmarkDataWrapper(toWrap);

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
    public java.lang.String getUrl()
    {   
        return this.pojo.getUrl();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.Integer getWeight()
    {   
        return this.pojo.getWeight();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.Integer getPriority()
    {   
        return this.pojo.getPriority();
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
    public java.lang.String getFeedUrl()
    {   
        return this.pojo.getFeedUrl();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.FolderDataWrapper getFolder()
    {
        return org.apache.roller.pojos.wrapper.FolderDataWrapper.wrap(this.pojo.getFolder());
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.BookmarkData getPojo() {
        return this.pojo;
    }

}
