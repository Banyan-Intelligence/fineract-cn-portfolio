--
-- Copyright 2017 Kuelap, Inc.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

CREATE TABLE bastet_p_balance_segs (
  id BIGINT NOT NULL AUTO_INCREMENT,
  seg_set_identifier       VARCHAR(32)    NOT NULL,
  segment_identifier       VARCHAR(32)    NOT NULL,
  product_id               BIGINT         NOT NULL,
  lower_bound              DECIMAL(19,4)  NOT NULL,
  CONSTRAINT bastet_p_balance_segs_pk PRIMARY KEY (id),
  CONSTRAINT bastet_p_balance_segs_uq UNIQUE (product_id, seg_set_identifier, segment_identifier),
  CONSTRAINT bastet_p_balance_segs_fk FOREIGN KEY (product_id) REFERENCES bastet_products (id)
);