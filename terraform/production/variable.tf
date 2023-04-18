/*
    변수 네이밍 규칙
    {CSP}_{variable_source}_{optional: usage}
*/

variable "AWS_REGION" {
    default = "ap-northeast-2" // 서울
}

variable "AWS_REGION_AZ" {
    default = "ap-northeast-2a"
}