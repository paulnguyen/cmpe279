package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.PlanetSubscriptionData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.PlanetSubscriptionData
 */
public class PlanetSubscriptionDataWrapper {

    // keep a reference to the wrapped pojo
    private PlanetSubscriptionData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private PlanetSubscriptionDataWrapper(PlanetSubscriptionData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static PlanetSubscriptionDataWrapper wrap(PlanetSubscriptionData toWrap) {
        if(toWrap != null)
            return new PlanetSubscriptionDataWrapper(toWrap);

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
    public java.lang.String getFeedURL()
    {   
        return this.pojo.getFeedURL();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.util.Date getLastUpdated()
    {   
        return this.pojo.getLastUpdated();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getSiteURL()
    {   
        return this.pojo.getSiteURL();
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
    public java.lang.String getAuthor()
    {   
        return this.pojo.getAuthor();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public int getInboundlinks()
    {   
        return this.pojo.getInboundlinks();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public int getInboundblogs()
    {   
        return this.pojo.getInboundblogs();
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
    public java.lang.String getURL()
    {   
        return this.pojo.getURL();
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.PlanetSubscriptionData getPojo() {
        return this.pojo;
    }

}
