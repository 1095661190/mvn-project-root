package com.presto.plugin.udf;

import io.prestosql.spi.Plugin;
import com.google.common.collect.ImmutableSet;

import java.util.Set;

public class UdfFactory
        implements Plugin
{
    @Override
    public Set<Class<?>> getFunctions()
    {
        /*
         * Presto 0.157 does not expose the interfaces to add SqlFunction objects directly
         * We can only add udfs via Annotations now
         *
         * Unsupported udfs right now:
         * Hash
         * Nvl
         * array_aggr
         */
        return ImmutableSet.<Class<?>>builder()
                .build();
    }
}
