##' Plots the images (Description)
##'
##' We use ggplot in order to visualize the original image and k clustered image (Details)
##' @title Plot Image
##' @param colors RGB
##' @param matrix the image
##' @param inputtitle title of plots
##' @param themevals the theme vals for ggplot
##' @return Side by side plot of original image and k clustered image
##' @author Ellis Wong
##' @export
##' @examples
##' ggplotshort(kColors, imgRGB, paste('K-Means Clustering of', numclust, 'Colors'), themevals)
ggplotshort <- function(colors, matrix, inputtitle, themevals) {
    ggplot2::ggplot(data = matrix, ggplot2::aes(x = x, y = y)) + ggplot2::geom_point(color = colors) + 
        ggplot2::theme_bw() + themevals + ggplot2::labs(title = inputtitle) + 
        ggplot2::xlab("x") + ggplot2::ylab("y")
}
