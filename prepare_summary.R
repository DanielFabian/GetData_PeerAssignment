wearableComputingSummary <- aggregate(
  wearableComputing[, 1:66],
  list(subject = wearableComputing$subject, activity = wearableComputing$activity),
  mean)

write.table(wearableComputingSummary, "submission.txt", row.names = F)