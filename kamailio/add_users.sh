#!/bin/bash
{
    kamctl add 100 password
    kamctl add 101 password
} || {
     echo "Extensions already created"
}