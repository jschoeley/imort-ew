# plot 0m1 central cohort death rates for east and west germany
# and percentage differences thereof
plot_m0_ew_phases <-
  ggplot(filter(imort, Timeframe == "Period", Sex == "Total"),
         aes(x = Year)) +
  # annot
  annotate(geom = "rect",
        xmin = 1956, xmax = 1958, ymin = -Inf, ymax = Inf,
        fill = rcpal$quacla[2], alpha = 0.2) +
  annotate(geom = "rect",
           xmin = 1958, xmax = 1961, ymin = -Inf, ymax = Inf,
           fill = rcpal$quacla[1], alpha = 0.2) +
  annotate(geom = "rect",
           xmin = 1961, xmax = 1963, ymin = -Inf, ymax = Inf,
           fill = rcpal$quacla[2], alpha = 0.2) +
  annotate(geom = "rect",
           xmin = 1963, xmax = 1973, ymin = -Inf, ymax = Inf,
           fill = rcpal$quacla[1], alpha = 0.2) +
  annotate(geom = "rect",
           xmin = 1973, xmax = 1979, ymin = -Inf, ymax = Inf,
           fill = rcpal$quacla[2], alpha = 0.2) +
  # main
  geom_line(aes(y = mx, group = Country, colour = Country)) +
  geom_bar(stat = "identity", position = "identity",
           data = filter(imort_diff, Timeframe == "Period", Sex == "Total"),
           aes(x = Year, y = rel_dmx),
           fill = "grey", width = 0.5) +
  # scale
  scale_colour_manual("", values = rcpal$quacla) +
  scale_y_continuous(expression((Delta)~italic(m(0))),
                     breaks = seq(-0.01, 0.05, 0.01)) +
  scale_x_continuous("Year",
                     breaks = c(1956, seq(1960, 1990, 5)),
                     labels = c("1956", "'60", "'65", "'70",
                                "'75", "'80", "'85", "1990")) +
  # coord
  coord_fixed(500) +
  # theme
  ggtheme_min(base_size = 10, base_family = "Palatino", legend_pos = c(0.8, 0.8))

plot_m0_ew_phases
