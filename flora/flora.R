library(flametree)

# shades <- c("#1b2e3c", "#0c0c1e", "#74112f", "#f3e3e2")

# data structure defining the trees
dat <- flametree_grow(time = 10, trees = 10)


#SPRING ####
name = 'wisp'
png(paste0('~/git/art/flora/', name, '.png'))
flametree_plot(dat,
    background = adjustcolor("yellowgreen", alpha.f=0.6),
    palette = c("#0c0c1e", 'plum3'),#'#7A378BCC'),#"mediumorchid4"),
    # background = "khaki1",
    # palette = c("#0c0c1e", "plum4"),
    style = name
)
dev.off()

#SUMMER (needs work) ####
name = 'minimal'
png(paste0('~/git/art/flora/', name, '.png'))
ggpubr::ggarrange(
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("#0c0c1e", "aquamarine3"),
        style = name
    ),
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("aquamarine3", '#0c0c1e'),
        style = name
    )
)
dev.off()

#AUTUMN ####
name = 'nativeflora'
png(paste0('~/git/art/flora/', name, '.png'))
flametree_plot(dat,
               background = "darkslategray",
               # palette = c("#0c0c1e", "firebrick2", 'lightgoldenrod1'),
               palette = c('lightgoldenrod1', "violetred4", "sienna"),
               # palette = c('lightgoldenrod1', "sienna", 'violetred4', ''),
               style = name
)
dev.off()

#WINTER ####
name = 'plain'
png(paste0('~/git/art/flora/', name, '.png'))
ggpubr::ggarrange(
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("#0c0c1e", "aquamarine3"),
        style = name
    ),
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("aquamarine3", '#0c0c1e'),
        style = name
    )
)
dev.off()

#FOUR SEASONS (needs work) ####
name = 'voronoi'
png(paste0('~/git/art/flora/', name, '.png'))
ggpubr::ggarrange(
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("#0c0c1e", "aquamarine3"),
        style = name
    ),
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("aquamarine3", '#0c0c1e'),
        style = name
    )
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("aquamarine3", '#0c0c1e'),
        style = name
    )
    flametree_plot(dat,
        background = "turquoise4",
        palette = c("aquamarine3", '#0c0c1e'),
        style = name
    )
)
dev.off()
