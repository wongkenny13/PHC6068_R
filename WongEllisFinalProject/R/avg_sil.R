##' Compute the average silhouette value for the observations for each k (Description)
##'
##' We want to determine the optimal K clusters to use. The silhouette method is used as default(Details)
##' @title Average Silhouette
##' @param k number of cluser
##' @param matrix matrix to compute average sihouette
##' @return Average silhouette of the observations are calculated for each k.
##' @author Ellis Wong
##' @export
##' @examples
##' avg_sil(k=4,matrix= optimMat)
avg_sil <- function(k, matrix) {
    km.res <- kmeans(matrix, centers = k, nstart = 25)
    ss <- cluster::silhouette(km.res$cluster, dist(matrix))
    mean(ss[, 3])
}
