resource "aws_kinesis_stream" "test_stream" {
  name        = "python-stream"
  shard_count = 1

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags = {
    Environment = "test"
  }
}